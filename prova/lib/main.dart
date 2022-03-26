import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "First App",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // widget huwe l return type; build esem location; buildContext betdell flutter wen location taba3 l app
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Helloo, Hellooo ya halaaa")),
        
        body: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly, children:[
          
          Container(
            height:100,
            width:100,
            color:Colors.blue,
          ),
           Container(
            height:100,
            width:100,
            color:Colors.blue,
          ),
           Container(
            height:100,
            width:100,
            color:Colors.blue,
          ),
        ],
        )
        
        );



  }
}
// Scaffold 3nda background white

