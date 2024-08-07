import 'package:flutter/material.dart';
import 'package:flutter_paging/screen/new_page.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MaterialApp.router(
    title: 'Flutter Demo',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      useMaterial3: true,
    ),
    //home: HomeWidget(),
    routerConfig: GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          name: 'home',
          builder: (context, _) => const HomeWidget(),
        ),
        GoRoute(
          path: '/new',
          name: 'new',
          builder: (context, _) => const NewPage(),
        ),
        GoRoute(
          path: '/new2',
          name: 'new2',
          builder: (context, _) => const NewPage2(),
          // routes: [
          //   GoRoute(
          //     path: '/new2_1',
          //     name: 'new2_1',
          //     builder: (context, _) => const NewPage(),
          //   ),
          // ],
        ),
      ],
    ),
  ));
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Flutter에서 화면 이동하기',
            style: TextStyle(color: Colors.blue, fontSize: 16),
          ),
        ),
      ),
      body: Center(
        child: TextButton(
          child: const Text(
            'Go to Page',
            style: TextStyle(color: Colors.blue, fontSize: 20),
          ),
          onPressed: () {
            // Navigator.push(context,
            //    MaterialPageRoute(builder: (context) => const NewPage()));
            context.pushNamed('new');
          },
        ),
      ),
    );
  }
}

/*
class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late int index;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Flutter애서 화면 이동하기',
            style: TextStyle(color: Colors.blue, fontSize: 16),
          ),
        ),
      ),
      body: homeBody(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User'),
        ],
        currentIndex: index,
        onTap: (newIndex) => setState(() {
          index = newIndex;
        }),
      ),
    );
  }

  Widget homeBody() {
    switch (index) {
      case 1:
        return const Center(
          child: Icon(
            Icons.search,
            size: 100,
          ),
        );
      case 2:
        return const Center(
          child: Icon(
            Icons.person,
            size: 100,
          ),
        );
      case 0:
      default:
        return const Center(
          child: Icon(
            Icons.home,
            size: 100,
          ),
        );
    }
  }
}
*/
