import 'package:flutter/material.dart';

// void main() {
//   return runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Hello World',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(this.title),
//         ),
//         body: Center(child: Text('Hello World')));
//   }
// }

void main() {
  runApp(MaterialApp(
    home: CustomWidget(),
  ));
}

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter better be worth it")),
      body: 
        Container(
          padding: EdgeInsets.all(10.0),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>
            [
              CustomCards(title: Text("u", style: TextStyle(fontSize: 25.0),), icon: Icon(Icons.favorite, size: 40.0, color: Colors.red)),
              CustomCards(title: Text("rnt"), icon: Icon(Icons.favorite)),
              CustomCards(title: Text("lucky"), icon: Icon(Icons.favorite)),
            ]
          )
        )   
    );
}
}

class CustomCards extends StatelessWidget {
  CustomCards({this.title, this.icon});

  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context) 
  {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: Card(
        child: Container(
          padding: new EdgeInsets.all(20),
          child: Column
          (
            children: <Widget>[
              this.title,
              this.icon
            ]
          )
        )
      ),
    );
  }
}
