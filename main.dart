import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class NameScreen extends StatefulWidget {
  const NameScreen({ Key? key }) : super(key: key);

  @override
  _NameScreenState createState() => _NameScreenState();
}

class _NameScreenState extends State<NameScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Demo App"),
        //leading: Icon(Icons.home),
        actions: [
          Icon(Icons.login),
          Icon(Icons.logout),
        ],
      ),
      drawer: Drawer(
        child:Column(children: [
          // Container(
          //   height: 500,
          //   width: 310,
          //   color: Colors.blue,
          //    child: Text("Welcome XYZ")),
          ListTile(
            title: Text("Log In"),
            trailing: Icon(Icons.login),
          ),
          Divider(thickness: 2, color: Colors.blue),
          ListTile(
            title: Text("Log Out"),
            trailing: Icon(Icons.logout),
          ),
          Divider(thickness: 2, color: Colors.blue),
          ListTile(
            title: Text("Help"),
            trailing: Icon(Icons.help),
          ),
          Divider(thickness: 2, color: Colors.blue),
          ListTile(
            title: Text("Support"),
            trailing: Icon(Icons.support),
          ),
          Divider(thickness: 2, color: Colors.blue),
        ],)
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                Icon(Icons.home, size: 50.0, color: Colors.blue),
                Icon(Icons.verified_user, size: 50.0, color: Colors.green),
              ],
            ),
            ElevatedButton(
              onPressed: (){
              print("user clicked on the submit button");
            }, child: Text("Submit", style:TextStyle(color: Colors.white))),            

            Container(
              //padding: EdgeInsets.all(500),
              width: 10000.0,
              height: 50.0,
              color: Colors.black,
              child: Center(child: Text("Gunjan Paneri", style: TextStyle(color: Colors.white))),
              ),

            SizedBox(
              child: Image.network(
                "https://miro.medium.com/max/1200/0*s7vGN34hz5jJUYTm.png", width: 200.0, height: 200.0),
            ),
            Text("Welcome to the homepage", style:TextStyle(color: Colors.red, fontSize: 25.0)),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
