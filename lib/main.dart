
import 'package:flutter/material.dart';


//understanding widgets


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


//understanding widgets prt 2


// void main() {
//   runApp(MaterialApp(
//     home: CustomWidget(),
//   ));
// }

// class CustomWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Flutter better be worth it")),
//       body: 
//         Container(
//           padding: EdgeInsets.all(10.0),
//           child:Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>
//             [
//               CustomCards(title: Text("u", style: TextStyle(fontSize: 25.0),), icon: Icon(Icons.favorite, size: 40.0, color: Colors.red)),
//               CustomCards(title: Text("rnt"), icon: Icon(Icons.favorite)),
//               CustomCards(title: Text("lucky"), icon: Icon(Icons.favorite)),
//             ]
//           )
//         )   
//     );
// }
// }

// class CustomCards extends StatelessWidget {
//   CustomCards({this.title, this.icon});

//   final Widget title;
//   final Widget icon;

//   @override
//   Widget build(BuildContext context) 
//   {
//     return Container(
//       padding: EdgeInsets.only(bottom: 20),
//       child: Card(
//         child: Container(
//           padding: new EdgeInsets.all(20),
//           child: Column
//           (
//             children: <Widget>[
//               this.title,
//               this.icon
//             ]
//           )
//         )
//       ),
//     );
//   }
// }


//Stateful Widgets

void main(){
  runApp(
    new MaterialApp(
      home: CustomButton()
    )
  );
}

class CustomButton extends StatefulWidget{
  @override
  CustomButtonState createState() => CustomButtonState();
}

class CustomButtonState extends State<CustomButton>{
  //2 formats shown below. first one is better used for understanding 
  //int counter = 0;
  //List<String> strings = ["I", "need", "Something"];
  var counter = 0;
  var strings = ["Stronger", "Better", "Faster"];
  String currentString = "";

  void onPressed(){
    setState(() {
      currentString = strings[counter];
      counter = counter < 2 ? counter + 1 : 0;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Stateful Widget"), backgroundColor: Colors.grey.shade900),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(currentString, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              Padding(padding: EdgeInsets.all(100)),
              ElevatedButton(
                child: Text("Press me", style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic)),
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey.shade900
                ),
                onPressed: onPressed,

                )
            ]
          )
          )
        ),
    );
  }
}