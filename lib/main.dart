import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart' as charts;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      initialRoute: '/',
      routes: {
        '/': (context) => FirstPage(),
        '/next': (context) => NextPage(),
        '/third': (context) => ThirdPage(),
      },
      //home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FirstPage'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(100.0),
        child: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: () => {Navigator.pushNamed(context, '/next')},
                child: Text('Nextページへ'),

              )
            ],
          ),
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NextPage'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: () =>
                {
                  Navigator.pop(context)
                  //Navigator.popUntil(context, '/')
                },
                child: Text('Firstページに戻る'),
              ),
              RaisedButton(
                onPressed: () =>
                {
                  Navigator.pushNamed(context, '/third')
                },
                child: Text('thirdページ'),
              )
            ],
          ),
        ),
      ),
    );
  }
}


class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ThirdPage'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            _menuItem("メニュー1", Icon(Icons.settings)),
            _menuItem("メニュー2", Icon(Icons.map)),
            _menuItem("メニュー3", Icon(Icons.room)),
            _menuItem("メニュー4", Icon(Icons.local_activity)),
            _menuItem("メニュー5", Icon(Icons.airline_seat_individual_suite)),
            _menuItem("メニュー1", Icon(Icons.settings)),
            _menuItem("メニュー2", Icon(Icons.map)),
            _menuItem("メニュー3", Icon(Icons.room)),
            _menuItem("メニュー4", Icon(Icons.local_activity)),
            _menuItem("メニュー5", Icon(Icons.airline_seat_individual_suite)),
            _menuItem("メニュー1", Icon(Icons.settings)),
            _menuItem("メニュー2", Icon(Icons.map)),
            _menuItem("メニュー3", Icon(Icons.room)),
            _menuItem("メニュー4", Icon(Icons.local_activity)),
            _menuItem("メニュー5", Icon(Icons.airline_seat_individual_suite)

            )
            ,
          ]
          ,
        )
    );
  }
}

Widget _menuItem(String title, Icon icon) {
  return Container(
    decoration: new BoxDecoration(
        border: new Border(bottom: BorderSide(width: 5.0, color: Colors.grey))
    ),
    child: ListTile(
      leading: icon,
      title: Text(
        title, style: TextStyle(
          color: Colors.red,
          fontSize: 36
      ),
      ),
      onTap: () {
        print("onTap called.");
      }, // タップ
      onLongPress: () {
        print("onLongPress called.");
      }, // 長押し
    ),
  );
}




