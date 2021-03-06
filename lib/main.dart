import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

Future<void> main() async {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'App',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: HomeScreen(),
      );
}

final text = BehaviorSubject<String>.seeded('text');

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final stream = text.switchMap<String>((_) {
      return null;
    });

    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeScreen'),
        ),
        body: Column(
          children: [
            StreamBuilder(
                stream: stream,
                builder: (context, AsyncSnapshot<String> snapshot) {
                  return const Text('Text generated by StreamBuilder');
                }),
            RaisedButton(
                child: const Text('Open another screen'),
                // The following line is needed to reproduce the issue
                // But, I'm wondering why this line is needed ...
                textColor: Theme.of(context).accentColor,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(builder: (_) => AnotherScreen()),
                  );
                }),
          ],
        ));
  }
}

class AnotherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('test')),
      body: const Text('test'),
    );
  }
}
