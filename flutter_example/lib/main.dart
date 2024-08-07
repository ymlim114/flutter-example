import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(''
              'Study to Container'),
        ),
        body: Body8(),
      ),
    ),
  );
}

// 02. Flutter Layout 03. Widget을 겹겹히 쌓아 올리기
class Body8 extends StatelessWidget {
  const Body8({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(150),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 280,
            height: 280,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(140),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            'Count 0',
            style: TextStyle(color: Colors.red, fontSize: 32),
          ),
        ),
        // Container(
        //   width: 500,
        //   height: 500,
        //   color: Colors.black,
        // ),
        // Container(
        //   width: 400,
        //   height: 400,
        //   color: Colors.red,
        // ),
        // Container(
        //   width: 300,
        //   height: 300,
        //   color: Colors.blue,
        // ),
        // Align(
        //   // alignment: Alignment.topRight,
        //   alignment: Alignment(0.5, -0.5),
        //   child: Container(
        //   width: 200,
        //   height: 200,
        //   color: Colors.green,
        // )),
      ],
    );
  }
}

// 02. Flutter Layout 02. Widget을 비율로 스크롤 배치하기
class Body7 extends StatelessWidget {
  const Body7({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
          margin: const EdgeInsets.symmetric(vertical: 8),
        ),
        Expanded(
          child: Container(
            width: 100,
            // height: 100,
            color: Colors.red,
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
          margin: const EdgeInsets.symmetric(vertical: 8),
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
          margin: const EdgeInsets.symmetric(vertical: 8),
        ),
      ],
    );
  }
}

// 02. Flutter Layout 02. Widget을 비율로 배치하기
class Body6 extends StatelessWidget {
  const Body6({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          color: Colors.red,
        ),
        Expanded(
            child: Container(
          color: Colors.blue,
          height: 100,
        )),
        Flexible(
            child: Container(
          color: Colors.red,
          height: 100,
        )),
        // Flexible(flex: 1, child: Container(color: Colors.red)),
        // Flexible(flex: 2, child: Container(color: Colors.blue)),
        // Flexible(flex: 3, child: Container(color: Colors.green)),
        // Flexible(flex: 4, child: Container(color: Colors.yellow)),
      ],
    );
  }
}

// 02. Flutter Layout 01. Widget을 좌우 스크롤 배치하기
class Body5 extends StatelessWidget {
  const Body5({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
          ),
        ],
      ),
    );
  }
}

// 02. Flutter Layout 01. Widget을 상하 스크롤 배치하기
class Body4 extends StatelessWidget {
  const Body4({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
        ],
      ),
    );
  }
}

// 02. Flutter Layout 01. Widget을 상하, 좌우로 배치하기
class Body3 extends StatelessWidget {
  const Body3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 80,
                child: Text('Container 1'),
                color: Colors.red,
              ),
              Container(
                width: 100,
                height: 80,
                child: Text('Container 2'),
                color: Colors.green,
              ),
              Container(
                width: 100,
                height: 80,
                child: Text('Container 3'),
                color: Colors.blue,
              ),
            ],
          ),
          Container(
            width: 300,
            height: 120,
            color: Colors.grey,
            child: Text('Container 4'),
          )
        ],
      ),
    );
  }
}

// 02. Flutter Layout 01. Widget을 좌우로 배치하기
class Body2 extends StatelessWidget {
  const Body2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 80,
            child: Text('Container 1'),
            color: Colors.red,
          ),
          Container(
            width: 100,
            height: 80,
            child: Text('Container 2'),
            color: Colors.green,
          ),
          Container(
            width: 100,
            height: 80,
            child: Text('Container 3'),
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}

// 02. Flutter Layout 01. Widget을 상하로 배치하기
class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 300,
      width: double.infinity,
      color: Colors.grey,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 80,
            child: Text('Container 1'),
            color: Colors.red,
          ),
          Container(
            width: 100,
            height: 80,
            child: Text('Container 2'),
            color: Colors.green,
          ),
          Container(
            width: 100,
            height: 80,
            child: Text('Container 3'),
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}

// 01. Flutter Widget(MeterialApp, Scaffold, Container)
class CustomContiner extends StatelessWidget {
  const CustomContiner({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
        // margin: EdgeInsets.symmetric(horizontal: 12, horizontal: 10),
        decoration: BoxDecoration(
            color: Color(0xFF85D07B),
            border: Border.all(
                color: Colors.red, width: 5, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  offset: Offset(6, 6),
                  blurRadius: 10,
                  spreadRadius: 10)
            ]),
        child: Center(
            child: Container(
                color: Colors.yellow, child: Text('Hello Container'))),
      ),
    );
  }
}
