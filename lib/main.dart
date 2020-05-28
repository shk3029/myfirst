import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // is not restarted.
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage("Cookle"));
  }
}

// stful (상태가 있는 위젯)
class MainPage extends StatefulWidget {

  final String title;
  MainPage(this.title);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  String _message = "hello"; // _는 private, 없으면 public

  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
            onPressed: _chgmessage,
        ),
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_message, style: TextStyle(fontSize: 20)),
                Text('$_counter', style: TextStyle(fontSize: 20)),
              ],
      ))
    );
  }

  void _chgmessage() {
    setState(() {
      _message = 'hello 2';
      _counter++;
    });
  }
}



















