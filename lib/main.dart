import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool _isChecked = false;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _changeChecked(bool? value) {
    print('value ' + value.toString());
    setState(() {
      _isChecked = !_isChecked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[200],
        title: Text('Todo List'),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(2.5),
              child: ListTile(
                leading: Text('${(index + 1).toString()}.'),
                tileColor: Colors.green[400],
                titleAlignment: ListTileTitleAlignment.center,
                title: Text(
                    'This is testing the line at the Richard Nixon at the office, Superman as his dog and Batman not answering to any authority.'),
                trailing:
                    Checkbox(value: _isChecked, onChanged: _changeChecked),
              ))),
    );
  }
}
