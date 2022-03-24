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
        appBar: AppBar(title: const Text("Helloo, Hellooo Helloo")),
        body: Center(
            child: Container(
          height: 250,
          width: 250,
          color: Colors.blue,
          child: const Center(
            child: Text("thank you",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
          ),
        )
        )
        );
  }
}
// Scaffold 3nda background white