import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  String passError = '';
  TextEditingController passwordController = TextEditingController();
  var formkey = GlobalKey<FormState>();
  bool isSecure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input data"),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              // controller: passwordController,
              decoration: InputDecoration(
                hintText: "Username",
                labelText: "Username",
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
                border: OutlineInputBorder(),
                // border: UnderlineInputBorder(),
                // border: InputBorder.none,
                // fillColor: Colors.yellow,
                // filled: true,
              ),
              //or
              //obscureText: isSecure? true: false,
              maxLength: 16,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
                key: formkey,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    } else if (value.length < 4) {
                      return 'Please enter at least 4 Characters';
                    }
                    return null;
                  },
                  obscureText: isSecure,
                  controller: passwordController,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(
                          isSecure ? Icons.security : Icons.remove_red_eye),
                      onPressed: () {
                        setState(() {
                          isSecure = !isSecure;
                        });
                      },
                    ),
                    hintText: "Password",
                    labelText: "Pass",
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    border: const OutlineInputBorder(),
                    // fillColor: Colors.yellow,
                    // filled: true,
                    errorText: passError,
                  ),
                )),
          ),
          MaterialButton(
              child: const Text("click here"),
              onPressed: () {
                debugPrint("Name" + passwordController.text);
                setState(() {
                  debugPrint("Form Validare" +formkey.currentState!.validate().toString());
                  if (passwordController.text.isEmpty) {
                    passError = "Please enter some text";
                  } else if (passwordController.text.length < 3) {
                    passError = "At least Enter 3 characters";
                  } else {
                    passError = " ";
                  }
                });
              }),
        ],
      ),
    );
  }
}
