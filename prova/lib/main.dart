import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:prova/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
   // widget huwe l return type; build esem location; buildContext betdell flutter wen location taba3 l app
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: "First App",
      home:HomePage2(),
      debugShowCheckedModeBanner: false,
    );
  }
}


