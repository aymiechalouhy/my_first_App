import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:prova/input.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),
      body: Column(children: [
        const SizedBox(height: 20),
        Center(
            child: Text(
          "$count",
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        )),
        FloatingActionButton(
            onPressed: () {
              setState(() {
                count = count + 1;
              });
            },
            child: const Icon(Icons.plus_one)),
        const SizedBox(
          height: 25,
        ),
        MaterialButton(
          onPressed: () {
            Get.to(() =>const InputScreen());
          },
          child: const Text("Input"),
          color: Colors.blue,
          textColor: Colors.white,
        )
      ]),
    );
  }
}
