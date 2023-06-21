import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _subtractCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              spacing: 8.0, // 主轴(水平)方向间距
              runSpacing: 4.0, // 纵轴（垂直）方向间距
              alignment: WrapAlignment.center, //沿主轴方向居中
              children: <Widget>[
                Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.yellow, child: Text('A')),
                  label: Text('TextStyle'),
                ),
                Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.yellow, child: Text('B')),
                  label: Text('Wrap'),
                ),
                Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.yellow, child: Text('C')),
                  label: Text('DecoratedBox'),
                ),
              ],
            ),
            Text(
              "You have pushed the button this many times:",
              textScaleFactor: 1.5,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            TextButton.icon(
              icon: Icon(Icons.remove),
              label: Text("减"),
              onPressed: _subtractCounter,
            ),
            DecoratedBox(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.red, Colors.orange.shade700]), //背景渐变
                    borderRadius: BorderRadius.circular(3.0), //3像素圆角
                    boxShadow: [
                      //阴影
                      BoxShadow(
                          color: Colors.black54,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 4.0)
                    ]),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 80.0, vertical: 18.0),
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
            Text(
              "The End",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 81.0,
                  height: 1.2,
                  fontFamily: "Courier",
                  background: Paint()..color = Colors.yellow,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.blue,
        elevation: 12,
        splashColor: Colors.purple,
        hoverColor: Colors.orange,
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
