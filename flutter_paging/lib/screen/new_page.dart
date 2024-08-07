import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome new Page',
          style: TextStyle(color: Colors.green, fontSize: 16),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              child: const Text(
                'Go to Back',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              onPressed: () {
                // Navigator.pop(context);
                context.pop();
              },
            ),
            TextButton(
              child: const Text(
                'Go to New Page2',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => const NewPage2()));
                context.pushNamed('new2');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class NewPage2 extends StatelessWidget {
  const NewPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome new Page2',
          style: TextStyle(color: Colors.deepOrange, fontSize: 16),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              child: const Text(
                'Go to Back',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              onPressed: () {
                // Navigator.pop(context);
                context.pop();
              },
            ),
            TextButton(
              child: const Text(
                'Go to Home',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              onPressed: () {
                // Navigator.popUntil(context, (route) => route.isFirst);
                context.pushNamed('home');
              },
            ),
          ],
        ),
      ),
    );
  }
}
